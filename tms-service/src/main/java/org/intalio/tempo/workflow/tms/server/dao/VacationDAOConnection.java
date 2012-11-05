package org.intalio.tempo.workflow.tms.server.dao;

import java.util.List;

import org.intalio.tempo.workflow.task.Vacation;

public interface VacationDAOConnection {

	/**
	 * Commit After transaction
	 * 
	 * @param
	 * 
	 * @return
	 */
	public void commit();

	/**
	 * Inserts Vacation Details
	 * 
	 * @param Vacation
	 *            Object
	 * 
	 * @return
	 */
	public void insertVacationDetails(Vacation vacation);

	/**
	 * Gets the vacation details of a particular user
	 * 
	 * @param logged
	 *            in user
	 * 
	 * @return Object Vacation of logged in user
	 */
	public List<Vacation> getVacationDetails(String user);
	
	/**
     * Gets the vacation details of all users
     *      * 
     * @return Object Vacation 
     */
    public List<Vacation> getVacationDetails();

	/**
	 * Gets the vacation details of a particular user
	 * 
	 * @param logged
	 *            in user
	 * 
	 * @return Object Vacation of logged in user
	 */
	public Boolean deleteVacationDetails(int id);
	/**
     *closes the connection
     */
	public void close();
}